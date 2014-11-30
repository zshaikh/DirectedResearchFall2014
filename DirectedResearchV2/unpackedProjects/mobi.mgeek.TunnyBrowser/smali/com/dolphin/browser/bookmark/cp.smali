.class public Lcom/dolphin/browser/bookmark/cp;
.super Ljava/lang/Object;
.source "PopupListItemInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/dolphin/browser/c/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dolphin/browser/c/a;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/cp;->a:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/dolphin/browser/bookmark/cp;->c:Lcom/dolphin/browser/c/a;

    .line 14
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/dolphin/browser/bookmark/cp;->b:Z

    .line 18
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/cp;->b:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/dolphin/browser/c/a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cp;->c:Lcom/dolphin/browser/c/a;

    return-object v0
.end method
