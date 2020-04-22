module Looop
  def self.for(_initial_condition, evaluation_step, after_eval_step, &blk)
    while(evaluation_step.call)
      yield
      after_eval_step.call
    end
  end
end
