-- This file have been created by wrapper-generator.
-- Any change will be lost by the next execution of the tool.

deferred class READLINE_EXTERNALS_EXTRA

insert ANY
      undefine
         is_equal, copy
      end

feature {} -- External calls
        rl_attempted_completion_object: READ_LINE_COMPLETION is
                -- rl_attempted_completion_function
                external "plug_in"
                alias "{
                        location: "."
                        module_name: "plugin"
                        feature_name: "get_rl_attempted_completion_object()"
                }"
                end

        set_rl_attempted_completion_object (a_value: READ_LINE_COMPLETION) is
                -- Set variable rl_attempted_completion_function value
                external "plug_in"
                alias "{
                        location: "."
                        module_name: "plugin"
                        feature_name: "set_rl_attempted_completion_object"
                }"
                end

end -- class READLINE_EXTERNALS_EXTRA