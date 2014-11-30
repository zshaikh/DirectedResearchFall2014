.class public Lcom/c/a/b/a/a;
.super Ljava/lang/Object;
.source "AuthenticationResult.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/c/a/b/a/a;->a:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/c/a/b/a/a;->b:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/c/a/b/a/a;->c:Ljava/lang/String;

    .line 53
    iput p4, p0, Lcom/c/a/b/a/a;->d:I

    .line 54
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/c/a/b/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/c/a/b/a/a;->b:Ljava/lang/String;

    return-object v0
.end method
