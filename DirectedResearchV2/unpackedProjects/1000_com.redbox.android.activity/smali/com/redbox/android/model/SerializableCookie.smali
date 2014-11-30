.class public Lcom/redbox/android/model/SerializableCookie;
.super Ljava/lang/Object;
.source "SerializableCookie.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/http/cookie/Cookie;


# static fields
.field private static final serialVersionUID:J = 0x5b7f064f70d3745L


# instance fields
.field private comment:Ljava/lang/String;

.field private commentUrl:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private expiryDate:Ljava/util/Date;

.field private isPersistent:Z

.field private isSecure:Z

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private ports:[I

.field private value:Ljava/lang/String;

.field private version:I


# direct methods
.method public constructor <init>(Lorg/apache/http/cookie/Cookie;)V
    .locals 2
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getComment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/model/SerializableCookie;->comment:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Comment :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/redbox/android/model/SerializableCookie;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getCommentURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/model/SerializableCookie;->commentUrl:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Comment url :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/redbox/android/model/SerializableCookie;->commentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/model/SerializableCookie;->domain:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Domain :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/redbox/android/model/SerializableCookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/model/SerializableCookie;->expiryDate:Ljava/util/Date;

    .line 37
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/model/SerializableCookie;->name:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Name :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/redbox/android/model/SerializableCookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/model/SerializableCookie;->path:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Path :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/model/SerializableCookie;->ports:[I

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ports :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/redbox/android/model/SerializableCookie;->ports:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/model/SerializableCookie;->value:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Value :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/redbox/android/model/SerializableCookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/redbox/android/model/SerializableCookie;->version:I

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Version :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/redbox/android/model/SerializableCookie;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->isPersistent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/redbox/android/model/SerializableCookie;->isPersistent:Z

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Is persistent :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/redbox/android/model/SerializableCookie;->isPersistent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/redbox/android/model/SerializableCookie;->isSecure:Z

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Is secure :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/redbox/android/model/SerializableCookie;->isSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/redbox/android/model/SerializableCookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/redbox/android/model/SerializableCookie;->commentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/redbox/android/model/SerializableCookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/redbox/android/model/SerializableCookie;->expiryDate:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/redbox/android/model/SerializableCookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/redbox/android/model/SerializableCookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()[I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/redbox/android/model/SerializableCookie;->ports:[I

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/redbox/android/model/SerializableCookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/redbox/android/model/SerializableCookie;->version:I

    return v0
.end method

.method public isExpired(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method
