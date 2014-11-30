.class public Lcom/dolphin/browser/r/a;
.super Ljava/lang/Object;
.source "LoginInfor.java"


# static fields
.field private static g:Lcom/dolphin/browser/r/a;


# instance fields
.field private a:Lcom/dolphin/browser/DolphinService/Account/p;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/dolphin/browser/r/a;

    invoke-direct {v0}, Lcom/dolphin/browser/r/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/r/a;->g:Lcom/dolphin/browser/r/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/dolphin/browser/r/a;->a:Lcom/dolphin/browser/DolphinService/Account/p;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/r/a;->b:I

    .line 32
    iput-object v1, p0, Lcom/dolphin/browser/r/a;->d:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/dolphin/browser/r/a;->e:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/dolphin/browser/r/a;->f:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static a()Lcom/dolphin/browser/r/a;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/dolphin/browser/r/a;->g:Lcom/dolphin/browser/r/a;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 60
    const-string v0, "LoginInfor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoginType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput p1, p0, Lcom/dolphin/browser/r/a;->b:I

    .line 62
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/Account/p;)V
    .locals 3

    .prologue
    .line 55
    const-string v0, "LoginInfor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p1, p0, Lcom/dolphin/browser/r/a;->a:Lcom/dolphin/browser/DolphinService/Account/p;

    .line 57
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 65
    const-string v0, "LoginInfor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAccountID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput-object p1, p0, Lcom/dolphin/browser/r/a;->c:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 85
    const-string v0, "LoginInfor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "email="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nick_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", user_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-object p1, p0, Lcom/dolphin/browser/r/a;->d:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/dolphin/browser/r/a;->e:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/dolphin/browser/r/a;->f:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 46
    const-string v0, "LoginInfor"

    const-string v1, "initAcountInfor"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->d()Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/r/a;->a(Lcom/dolphin/browser/DolphinService/Account/p;)V

    .line 49
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/DolphinService/Account/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/DolphinService/Account/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/dolphin/browser/r/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/r/a;->a(I)V

    .line 52
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lorg/apache/http/HttpEntity;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/r/a;->a:Lcom/dolphin/browser/DolphinService/Account/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/r/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/r/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/r/a;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 148
    :goto_0
    return-object v0

    .line 135
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device_id"

    iget-object v4, p0, Lcom/dolphin/browser/r/a;->c:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 139
    const-string v3, "token"

    iget-object v4, p0, Lcom/dolphin/browser/r/a;->a:Lcom/dolphin/browser/DolphinService/Account/p;

    invoke-virtual {v4}, Lcom/dolphin/browser/DolphinService/Account/p;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v3, "nick_name"

    iget-object v4, p0, Lcom/dolphin/browser/r/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v3, "email"

    iget-object v4, p0, Lcom/dolphin/browser/r/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v3, "type"

    iget v4, p0, Lcom/dolphin/browser/r/a;->b:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 148
    goto :goto_0
.end method
