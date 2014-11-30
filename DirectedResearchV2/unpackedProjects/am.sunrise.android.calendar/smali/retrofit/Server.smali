.class public Lretrofit/Server;
.super Ljava/lang/Object;
.source "Server.java"

# interfaces
.implements Lretrofit/Endpoint;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_NAME:Ljava/lang/String; = "default"


# instance fields
.field private final apiUrl:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    const-string v0, "default"

    invoke-direct {p0, p1, v0}, Lretrofit/Server;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lretrofit/Server;->apiUrl:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lretrofit/Server;->name:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lretrofit/Server;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lretrofit/Server;->apiUrl:Ljava/lang/String;

    return-object v0
.end method
