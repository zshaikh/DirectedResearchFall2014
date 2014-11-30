.class Lcom/dolphin/browser/voice/command/f;
.super Lcom/dolphin/browser/util/f;
.source "RecognizingTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/dolphin/browser/voice/command/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/voice/command/d;

.field private final b:Lcom/dolphin/browser/voice/command/h;

.field private c:Lcom/dolphin/browser/voice/command/m;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/voice/command/d;Lcom/dolphin/browser/voice/command/h;Lcom/dolphin/browser/voice/command/m;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/f;->a:Lcom/dolphin/browser/voice/command/d;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/dolphin/browser/voice/command/f;->b:Lcom/dolphin/browser/voice/command/h;

    .line 151
    iput-object p3, p0, Lcom/dolphin/browser/voice/command/f;->c:Lcom/dolphin/browser/voice/command/m;

    .line 152
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/dolphin/browser/voice/command/i;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/f;->a:Lcom/dolphin/browser/voice/command/d;

    iget-object v1, p0, Lcom/dolphin/browser/voice/command/f;->b:Lcom/dolphin/browser/voice/command/h;

    invoke-static {v0, v1}, Lcom/dolphin/browser/voice/command/d;->a(Lcom/dolphin/browser/voice/command/d;Lcom/dolphin/browser/voice/command/h;)Lcom/dolphin/browser/voice/command/i;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_1

    .line 164
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/f;->c:Lcom/dolphin/browser/voice/command/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/voice/command/f;->a:Lcom/dolphin/browser/voice/command/d;

    invoke-static {v1}, Lcom/dolphin/browser/voice/command/d;->a(Lcom/dolphin/browser/voice/command/d;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/f;->c:Lcom/dolphin/browser/voice/command/m;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/voice/command/m;->a(Lcom/dolphin/browser/voice/command/i;)V

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/f;->a:Lcom/dolphin/browser/voice/command/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/voice/command/d;->a(Lcom/dolphin/browser/voice/command/d;Ljava/lang/String;)V

    .line 203
    :goto_0
    return-object v0

    .line 170
    :cond_1
    const-string v0, "RecognizingTask"

    const-string v1, "recognizing started!"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v0, "Sonar"

    const-string v1, "duration"

    const-string v3, "yuyi"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v3, v4, v5}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->recordStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 172
    invoke-static {}, Lcom/dolphin/browser/voice/command/c/a;->a()Lcom/dolphin/browser/voice/command/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/voice/command/f;->b:Lcom/dolphin/browser/voice/command/h;

    invoke-virtual {v1}, Lcom/dolphin/browser/voice/command/h;->b()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/dolphin/browser/voice/command/f;->a:Lcom/dolphin/browser/voice/command/d;

    invoke-static {v3}, Lcom/dolphin/browser/voice/command/d;->b(Lcom/dolphin/browser/voice/command/d;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dolphin/browser/voice/command/f;->b:Lcom/dolphin/browser/voice/command/h;

    invoke-virtual {v4}, Lcom/dolphin/browser/voice/command/h;->a()F

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/dolphin/browser/voice/command/c/a;->a(Ljava/util/List;Ljava/lang/String;FI)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 174
    const-string v1, "Sonar"

    const-string v3, "duration"

    const-string v4, "yuyi"

    sget-object v5, Lcom/dolphin/browser/util/Tracker$Priority;->Normal:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v1, v3, v4, v5}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackDuration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 175
    const-string v1, "RecognizingTask"

    const-string v3, "recognizing finished."

    invoke-static {v1, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    :try_start_0
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 179
    new-instance v1, Lcom/dolphin/browser/voice/command/i;

    iget-object v3, p0, Lcom/dolphin/browser/voice/command/f;->b:Lcom/dolphin/browser/voice/command/h;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/voice/command/h;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/dolphin/browser/voice/command/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/dolphin/browser/voice/command/f;->c:Lcom/dolphin/browser/voice/command/m;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/dolphin/browser/voice/command/f;->a:Lcom/dolphin/browser/voice/command/d;

    invoke-static {v3}, Lcom/dolphin/browser/voice/command/d;->a(Lcom/dolphin/browser/voice/command/d;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 182
    iget-object v3, p0, Lcom/dolphin/browser/voice/command/f;->c:Lcom/dolphin/browser/voice/command/m;

    invoke-interface {v3, v1}, Lcom/dolphin/browser/voice/command/m;->a(Lcom/dolphin/browser/voice/command/i;)V

    .line 188
    :cond_2
    iget-object v3, p0, Lcom/dolphin/browser/voice/command/f;->a:Lcom/dolphin/browser/voice/command/d;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/dolphin/browser/voice/command/d;->b(Lcom/dolphin/browser/voice/command/d;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 189
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    const-string v1, "RecognizingTask"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/f;->c:Lcom/dolphin/browser/voice/command/m;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dolphin/browser/voice/command/f;->a:Lcom/dolphin/browser/voice/command/d;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/d;->a(Lcom/dolphin/browser/voice/command/d;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/f;->c:Lcom/dolphin/browser/voice/command/m;

    invoke-interface {v0, v2}, Lcom/dolphin/browser/voice/command/m;->a(Lcom/dolphin/browser/voice/command/i;)V

    :cond_3
    move-object v0, v2

    .line 203
    goto/16 :goto_0

    .line 195
    :cond_4
    :try_start_1
    const-string v1, "RecognizingTask"

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 196
    :catch_1
    move-exception v0

    .line 197
    const-string v1, "RecognizingTask"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/voice/command/f;->a([Ljava/lang/Void;)Lcom/dolphin/browser/voice/command/i;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/dolphin/browser/voice/command/i;)V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/voice/command/f;->c:Lcom/dolphin/browser/voice/command/m;

    .line 212
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 143
    check-cast p1, Lcom/dolphin/browser/voice/command/i;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/voice/command/f;->a(Lcom/dolphin/browser/voice/command/i;)V

    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 156
    invoke-super {p0}, Lcom/dolphin/browser/util/f;->b()V

    .line 157
    const-string v0, "RecognizingTask"

    const-string v1, "canceled recognization."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method
