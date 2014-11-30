.class Lcom/dolphin/browser/push/k;
.super Ljava/lang/Object;
.source "LogoutManager.java"

# interfaces
.implements Lcom/dolphin/browser/push/ax;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/i;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/dolphin/browser/push/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/push/i;Ljava/lang/String;ZLcom/dolphin/browser/push/l;)V
    .locals 1

    .prologue
    .line 140
    iput-object p1, p0, Lcom/dolphin/browser/push/k;->a:Lcom/dolphin/browser/push/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/dolphin/browser/push/k;->b:Ljava/lang/String;

    .line 142
    iput-boolean p3, p0, Lcom/dolphin/browser/push/k;->c:Z

    .line 143
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dolphin/browser/push/k;->d:Ljava/lang/ref/WeakReference;

    .line 144
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 196
    const-string v0, "DBS Push"

    const-string v1, "logout"

    const-string v2, "trigger"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/k;->a(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 202
    const-string v0, "DBS Push"

    const-string v1, "logout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-boolean v0, p0, Lcom/dolphin/browser/push/k;->c:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/dolphin/browser/push/k;->a:Lcom/dolphin/browser/push/i;

    iget-object v1, p0, Lcom/dolphin/browser/push/k;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dolphin/browser/push/i;->a(Lcom/dolphin/browser/push/i;Ljava/lang/String;)V

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/push/k;->c()Lcom/dolphin/browser/push/l;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_1

    .line 210
    invoke-interface {v0}, Lcom/dolphin/browser/push/l;->a()V

    .line 212
    :cond_1
    return-void
.end method

.method public a(Lcom/dolphin/browser/Network/d;Lcom/dolphin/browser/Network/n;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 154
    if-nez p2, :cond_0

    .line 155
    const-string v1, "result is null"

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/push/k;->a(Ljava/lang/String;)V

    .line 191
    :goto_0
    return v0

    .line 161
    :cond_0
    const/4 v1, 0x0

    .line 166
    :try_start_0
    iget-object v3, p2, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 167
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    .line 168
    new-instance v1, Lcom/dolphin/browser/DolphinService/WebService/e;

    iget-object v2, p2, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/dolphin/browser/DolphinService/WebService/e;-><init>(I)V

    throw v1
    :try_end_0
    .catch Lcom/dolphin/browser/DolphinService/WebService/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    :catch_0
    move-exception v1

    .line 180
    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/WebService/e;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    :goto_1
    if-nez v0, :cond_3

    .line 186
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/push/k;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_1
    :try_start_1
    iget-object v3, p2, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v3}, Lcom/dolphin/browser/Network/l;->c(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;

    move-result-object v3

    .line 171
    const-string v4, "status"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 172
    if-eqz v3, :cond_2

    const/16 v4, 0xb

    if-eq v3, v4, :cond_2

    .line 173
    new-instance v1, Lcom/dolphin/browser/DolphinService/WebService/e;

    invoke-direct {v1, v3}, Lcom/dolphin/browser/DolphinService/WebService/e;-><init>(I)V

    throw v1
    :try_end_1
    .catch Lcom/dolphin/browser/DolphinService/WebService/e; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :catch_1
    move-exception v1

    .line 182
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 175
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/dolphin/browser/push/k;->a:Lcom/dolphin/browser/push/i;

    iget-object v4, p0, Lcom/dolphin/browser/push/k;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/push/i;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/dolphin/browser/DolphinService/WebService/e; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v2

    .line 183
    goto :goto_1

    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/push/k;->b()V

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 215
    const-string v0, "DBS Push"

    const-string v1, "logout"

    const-string v2, "succeed"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/dolphin/browser/push/k;->c()Lcom/dolphin/browser/push/l;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0}, Lcom/dolphin/browser/push/l;->b()V

    .line 222
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/push/k;->c:Z

    if-nez v0, :cond_1

    .line 223
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/push/f;->b(Ljava/lang/String;)Z

    .line 225
    :cond_1
    return-void
.end method

.method c()Lcom/dolphin/browser/push/l;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/dolphin/browser/push/k;->d:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/push/k;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/l;

    goto :goto_0
.end method
