BEGIN {
  #sort = "sort"
  sort = "sort | xargs -i printf \"%s: %s\n\" {} {}"
}

{
  printf("%s: %d\n", $NF, FNR) | sort
}

END {
  close(sort);
  print FILENAME
}
