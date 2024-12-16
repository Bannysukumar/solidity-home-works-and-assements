// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;

contract todo{
    struct todo{
        string text;
        bool completed;
    }
    todo[] public todos;
    function create(string calldata _text) public {
        todos.push(todo(_text,false));
    
    todos.push(todo({text:_text,completed:false}));
    todo memory todo;
    todo.text = _text;
    todos.push(todo);
    }
    function get(uint _index) public view returns (string memory text, bool completed){
        todo storage todo = todos[_index];
        return (todo.text,todo.completed);
    }
    function completed(uint _index)public {
        todo storage todo = todos[_index];
        todo.completed = ! todo.completed;
    }
}