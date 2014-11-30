.class public Lcom/dolphin/browser/share/b/j;
.super Ljava/lang/Object;
.source "ShareInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/dolphin/browser/share/b/j;->a:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/dolphin/browser/share/b/j;->b:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/dolphin/browser/share/b/j;->c:Ljava/lang/String;

    .line 16
    iput p4, p0, Lcom/dolphin/browser/share/b/j;->d:I

    .line 17
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/share/b/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dolphin/browser/share/b/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/share/b/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/dolphin/browser/share/b/j;->d:I

    return v0
.end method
