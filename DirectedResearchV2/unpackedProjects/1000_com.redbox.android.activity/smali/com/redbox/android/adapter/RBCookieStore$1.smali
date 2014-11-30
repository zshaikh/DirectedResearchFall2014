.class Lcom/redbox/android/adapter/RBCookieStore$1;
.super Ljava/lang/Object;
.source "RBCookieStore.java"

# interfaces
.implements Lorg/apache/http/cookie/Cookie;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/adapter/RBCookieStore;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/adapter/RBCookieStore;

.field private final synthetic val$authToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/redbox/android/adapter/RBCookieStore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/adapter/RBCookieStore$1;->this$0:Lcom/redbox/android/adapter/RBCookieStore;

    iput-object p2, p0, Lcom/redbox/android/adapter/RBCookieStore$1;->val$authToken:Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "www.redbox.com"

    return-object v0
.end method

.method public getExpiryDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, ".Redbox"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "/"

    return-object v0
.end method

.method public getPorts()[I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/redbox/android/adapter/RBCookieStore$1;->val$authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public isExpired(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method
