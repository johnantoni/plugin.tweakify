module ActiveRecord
  class SessionStore
    def set_session(env, sid, session_data)
      Base.silence do
        record = get_session_model(env, sid)
        record.data = session_data

        return false unless record.save

        session_data = record.data
        if session_data && session_data.respond_to?(:each_value)
          session_data.each_value do |obj|
            obj.clear_association_cache if obj.respond_to?(:clear_association_cache)
          end
        end
      end

      return true
    end

    def get_session_model(env, sid)
      if env[ENV_SESSION_OPTIONS_KEY][:id].nil?
        env[ENV_SESSION_OPTIONS_KEY][:id] = sid
        env[SESSION_RECORD_KEY] = find_session(sid)
      else
        env[SESSION_RECORD_KEY] ||= find_session(sid)
      end
    end
  end
end
