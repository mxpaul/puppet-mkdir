define mkdir::directory(
  $ensure   = 'present',
  $owner    = 'root',
  $group    = 'root',
  $mode     = '0755',
  $recurse  = false,
) {

  mkdir {$title:
    ensure      => $ensure,
  }

  $file_ensure  = $ensure ? { 'absent' => 'absent', default => 'directory'}

  file {$title:
    ensure      => $file_ensure,
    owner       => $owner,
    group       => $group,
    mode        => $mode,
    require     => Mkdir[$title],
    recurse     => $recurse,
  }

}
