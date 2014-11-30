.class public Lcom/facebook/orca/auth/KatanaSessionInfo;
.super Ljava/lang/Object;
.source "KatanaSessionInfo.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/facebook/orca/auth/KatanaSessionInfo;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/facebook/orca/auth/KatanaSessionInfo;->b:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/facebook/orca/auth/KatanaSessionInfo;->c:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/orca/auth/KatanaSessionInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/auth/KatanaSessionInfo;->c:Ljava/lang/String;

    return-object v0
.end method
