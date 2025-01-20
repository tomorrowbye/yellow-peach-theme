# get git branch's name
function git_branch() {
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [[ -n $branch ]]; then
    echo " 🌿 %F{#514538}git:%f (%B%F{green}$branch%f%b)"
  else
    echo " 📁"
  fi
}

# 定义提示符
PROMPT='%B%F{#FFA500}%n%f%b%F{#514538}@%m%f:%F{#ff8983}%~%f$(git_branch) %F{#c25451}%*%f$ '