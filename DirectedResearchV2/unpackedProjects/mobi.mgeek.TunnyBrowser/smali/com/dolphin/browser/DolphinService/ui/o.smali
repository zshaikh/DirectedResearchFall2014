.class Lcom/dolphin/browser/DolphinService/ui/o;
.super Ljava/lang/Object;
.source "CloudDataManageActivity.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/WebService/a;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/o;->a:Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/b;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/o;->a:Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V

    .line 113
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/o;->a:Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->b(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V

    .line 135
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p1, Lcom/dolphin/browser/DolphinService/WebService/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/DolphinService/WebService/f;

    .line 118
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->b()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/o;->a:Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->b(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V

    goto :goto_0

    .line 122
    :cond_2
    const/4 v1, 0x0

    .line 125
    :try_start_0
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :goto_1
    if-eqz v0, :cond_3

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_4

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/o;->a:Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->b(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;)V

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    .line 133
    :cond_4
    check-cast v0, Lorg/json/JSONObject;

    .line 134
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/o;->a:Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;->a(Lcom/dolphin/browser/DolphinService/ui/CloudDataManageActivity;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
