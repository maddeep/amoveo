#if you want to use a different port, then start like this:
# sh start 3666
#sh clean.sh #this deletes the database so every time we re-start, we have 0 blocks again. only needed during testing.
echo "GO TO THIS WEBSITE -------> http://localhost:8041/login.html"
#sleep 1
erl -pa ebin deps/*/ebin/ -eval "application:ensure_all_started(testnet), serve:pw($1), peers:add({46,101,103,165}, 8080)"
# keys:unlock(\"abc\")"
