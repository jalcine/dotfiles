function exenv_prompt_info()
{
  echo "$(exenv version | cut -f 1 -d ' ')"
}

function prompt_exenv()
{
  echo $(exenv_prompot_info)
}
