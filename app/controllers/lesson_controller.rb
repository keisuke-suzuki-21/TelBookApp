class LessonController < ApplicationController
    def step1
        render plain: "こんにちは、#{params[:name]}さん"
    end

    def step2
        render plain: request.env["HTTP_USER_AGENT"]
    end

    def step3
        redirect_to action: "step4", notice: "step3から来てフラッシュ使ってます"
    end

    def step4
        render plain: flash[:notice]
    end

    def step5
        @price = (2000 * 1.10).floor
    end

    def step6
        @message = "ヘルパーモジュールを作ってみたよ。\n改行を読み取りbrタグに変換するよ。"
        render "step5"
    end
end
