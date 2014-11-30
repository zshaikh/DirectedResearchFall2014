.class Lcom/dolphin/browser/update/h;
.super Lcom/dolphin/browser/util/f;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/dolphin/browser/update/model/UpdateInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/update/f;

.field private b:Lcom/dolphin/browser/update/g;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/update/f;Lcom/dolphin/browser/update/g;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/dolphin/browser/update/h;->a:Lcom/dolphin/browser/update/f;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/dolphin/browser/update/h;->b:Lcom/dolphin/browser/update/g;

    .line 117
    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/update/h;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/update/model/UpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/update/h;->a:Lcom/dolphin/browser/update/f;

    invoke-static {v1}, Lcom/dolphin/browser/update/f;->a(Lcom/dolphin/browser/update/f;)Lcom/dolphin/browser/update/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/update/a/a;->b()Ljava/util/List;
    :try_end_0
    .catch Lcom/dolphin/browser/update/a/e; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    const-string v2, "UpdateManager"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/update/h;->b:Lcom/dolphin/browser/update/g;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/update/h;->b:Lcom/dolphin/browser/update/g;

    invoke-interface {v0}, Lcom/dolphin/browser/update/g;->a()V

    .line 124
    :cond_0
    const-string v0, "UpdateTask"

    const-string v1, "onPreExecute"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 111
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/update/h;->a(Ljava/util/List;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/update/model/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/update/h;->b:Lcom/dolphin/browser/update/g;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/update/h;->b:Lcom/dolphin/browser/update/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/update/g;->a(Ljava/util/List;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/update/h;->a:Lcom/dolphin/browser/update/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/update/f;->a(J)V

    .line 146
    const-string v0, "UpdateTask"

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method
