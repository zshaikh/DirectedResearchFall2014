.class final Lcom/aarki/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aarki/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aarki/d;


# direct methods
.method constructor <init>(Lcom/aarki/d;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/aarki/d$1;->a:Lcom/aarki/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 40
    invoke-static {}, Lcom/aarki/b;->a()Lcom/aarki/b;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aarki/b;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aarki/d$1;->a:Lcom/aarki/d;

    invoke-static {v1}, Lcom/aarki/d;->a(Lcom/aarki/d;)Lcom/aarki/Aarki$RewardListener;

    move-result-object v1

    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "app_sec_key"

    invoke-static {}, Lcom/aarki/b;->l()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sdk_version"

    const-string v4, "2.8"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device_platform"

    invoke-static {}, Lcom/aarki/b;->m()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "user_id"

    invoke-virtual {v0}, Lcom/aarki/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    const-string v3, ""

    .line 59
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/aarki/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/aarki/b;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aarki/c;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 66
    :goto_1
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sha1_signature"

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v0, Lcom/aarki/c;

    const-string v3, "checkUserRewards"

    invoke-direct {v0, v3}, Lcom/aarki/c;-><init>(Ljava/lang/String;)V

    .line 70
    const-string v3, "https://hs.aarki.net/user/balance/drain.json"

    invoke-static {v3, v1}, Lcom/aarki/c;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/aarki/d$1$1;

    invoke-direct {v3, p0}, Lcom/aarki/d$1$1;-><init>(Lcom/aarki/d$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/aarki/c;->a(Ljava/lang/String;Ljava/util/List;Lcom/aarki/c$b;)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Checking rewards. Time interval: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aarki/d$1;->a:Lcom/aarki/d;

    invoke-static {v1}, Lcom/aarki/d;->b(Lcom/aarki/d;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sec."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    sget-boolean v0, Lcom/aarki/d;->a:Z

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/aarki/d$1;->a:Lcom/aarki/d;

    invoke-static {v0}, Lcom/aarki/d;->c(Lcom/aarki/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object v0, v3

    .line 64
    goto :goto_1

    .line 62
    :catch_1
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v3

    goto :goto_1

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/aarki/d$1;->a:Lcom/aarki/d;

    invoke-static {v0}, Lcom/aarki/d;->b(Lcom/aarki/d;)J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/aarki/d$1;->a:Lcom/aarki/d;

    invoke-static {v0}, Lcom/aarki/d;->c(Lcom/aarki/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/aarki/d$1;->a:Lcom/aarki/d;

    invoke-static {v0}, Lcom/aarki/d;->c(Lcom/aarki/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/aarki/d$1;->a:Lcom/aarki/d;

    invoke-static {v1}, Lcom/aarki/d;->b(Lcom/aarki/d;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
