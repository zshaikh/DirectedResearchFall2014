.class public Lcom/c/a/a/a;
.super Ljava/lang/Object;
.source "ApplicationInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/c/a/a/a;->a:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/c/a/a/a;->b:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/c/a/a/a;->c:Ljava/lang/String;

    .line 58
    invoke-static {p4, p5}, Lcom/c/b/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/a;->d:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/c/a/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/c/a/a/a;->d:Ljava/lang/String;

    return-object v0
.end method
