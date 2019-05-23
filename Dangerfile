# frozen_string_literal: true

def changed_files
  git.modified_files + git.added_files
end

def check_static_lint
  rubocop.lint(files: changed_files, force_exclusion: true, report_danger: true)
end

check_static_lint
