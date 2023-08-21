var1='A'
var2='B'

func() {
    local var1='C'
    var2='D'
    echo "Inside func: var1: $var1, var2: $var2"
}

echo "Before: var1: $var1, var2: $var2"

func

echo "After: var1: $var1, var2: $var2"

