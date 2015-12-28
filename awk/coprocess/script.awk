{
  prefixer = "./prefix.sh"
  printf("%s\n", $1) |&  prefixer
  prefixer |& getline
  print $0
}
