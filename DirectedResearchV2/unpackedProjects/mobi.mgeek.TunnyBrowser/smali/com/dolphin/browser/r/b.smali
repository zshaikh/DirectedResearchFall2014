.class public Lcom/dolphin/browser/r/b;
.super Lcom/dolphin/browser/util/f;
.source "SonarLoginTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field private b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/r/b;->a:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/dolphin/browser/r/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/r/c;-><init>(Lcom/dolphin/browser/r/b;)V

    iput-object v0, p0, Lcom/dolphin/browser/r/b;->b:Ljava/lang/Runnable;

    .line 27
    iput-object p1, p0, Lcom/dolphin/browser/r/b;->a:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lcom/dolphin/browser/r/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 39
    const-string v0, "SonarLoginTask"

    const-string v1, "doInBackground"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Lcom/dolphin/browser/r/a;->a()Lcom/dolphin/browser/r/a;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/dolphin/browser/r/a;->b()V

    .line 46
    invoke-static {}, Lcom/dolphin/browser/r/d;->a()Lcom/dolphin/browser/r/d;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/dolphin/browser/r/d;->b()Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 49
    const-string v1, "SonarLoginTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "SonarLoginTask"

    const-string v1, "onPreExecute"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const v4, 0x7f0e0683

    const/4 v3, 0x0

    .line 55
    const-string v0, "SonarLoginTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute, result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    check-cast p1, Lcom/dolphin/browser/DolphinService/WebService/f;

    .line 58
    if-nez p1, :cond_0

    .line 59
    const-string v0, "SonarLoginTask"

    const-string v1, "onPostExecute fail: server result is null"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/r/b;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/dolphin/browser/DolphinService/WebService/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/r/b;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0684

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 64
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/dolphin/browser/r/b;->b:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 67
    :cond_1
    const-string v0, "SonarLoginTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dolphin/browser/DolphinService/WebService/f;->b()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/r/b;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
