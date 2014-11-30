.class public Lretrofit/ChangeableServer;
.super Ljava/lang/Object;
.source "ChangeableServer.java"

# interfaces
.implements Lretrofit/Endpoint;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lretrofit/ChangeableServer;->url:Ljava/lang/String;

    .line 32
    const-string v0, "default"

    iput-object v0, p0, Lretrofit/ChangeableServer;->name:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lretrofit/ChangeableServer;->url:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lretrofit/ChangeableServer;->name:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lretrofit/ChangeableServer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lretrofit/ChangeableServer;->url:Ljava/lang/String;

    return-object v0
.end method

.method public update(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lretrofit/ChangeableServer;->url:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lretrofit/ChangeableServer;->url:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lretrofit/ChangeableServer;->name:Ljava/lang/String;

    .line 50
    return-void
.end method
