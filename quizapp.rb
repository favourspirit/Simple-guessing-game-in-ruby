class Question
attr_accessor :prompt, :answer
def initialize(prompt, answer)
@prompt = prompt
@answer = answer
end
end

p1 = "what clors are apples?\n(a)red\n(b)green\n(c)orange"
p2 = "what  colors are apples?\n(a)red\n(b)green\n(c)orange"
p3 = "what  colors are apples?\n(a)red\n(b)green\n(c)orange"

questions = [
Question.new(p1, "a"),
Question.new(p2, "b"),
Question.new(p3, "c")
]
     def run_test(questions)
          answer = ""
          score = 0
          for question in questions
            puts question.prompt
            answer = gets.chomp()
            if answer == question.answer
               score +=1
            end
            puts ("you got" + score + "/" + questions.length )
          end
     end

run_test (questions)
