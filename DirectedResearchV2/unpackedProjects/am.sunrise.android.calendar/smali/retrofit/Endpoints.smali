.class public final Lretrofit/Endpoints;
.super Ljava/lang/Object;
.source "Endpoints.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static newFixedEndpoint(Ljava/lang/String;)Lretrofit/Endpoint;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lretrofit/Server;

    invoke-direct {v0, p0}, Lretrofit/Server;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newFixedEndpoint(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Endpoint;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lretrofit/Server;

    invoke-direct {v0, p0, p1}, Lretrofit/Server;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
