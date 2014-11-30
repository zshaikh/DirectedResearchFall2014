.class public abstract Lcom/dolphin/browser/m/a/c;
.super Landroid/widget/BaseAdapter;
.source "PopupAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/dolphin/browser/m/a/c;->a:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/dolphin/browser/m/a/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/dolphin/browser/m/a/c;->b:I

    .line 22
    invoke-virtual {p0}, Lcom/dolphin/browser/m/a/c;->notifyDataSetChanged()V

    .line 23
    return-void
.end method

.method public a(ILcom/dolphin/browser/m/a/e;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 30
    iget v0, p0, Lcom/dolphin/browser/m/a/c;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 31
    if-nez p1, :cond_0

    .line 32
    invoke-virtual {p2, v2}, Lcom/dolphin/browser/m/a/e;->a(Z)V

    .line 34
    :cond_0
    invoke-virtual {p2, v2}, Lcom/dolphin/browser/m/a/e;->c(Z)V

    .line 41
    :cond_1
    :goto_0
    invoke-virtual {p2, v2}, Lcom/dolphin/browser/m/a/e;->d(Z)V

    .line 42
    invoke-virtual {p2, v2}, Lcom/dolphin/browser/m/a/e;->b(Z)V

    .line 43
    return-void

    .line 35
    :cond_2
    iget v0, p0, Lcom/dolphin/browser/m/a/c;->b:I

    if-ne v0, v2, :cond_1

    .line 36
    if-nez p1, :cond_3

    .line 37
    invoke-virtual {p2, v2}, Lcom/dolphin/browser/m/a/e;->c(Z)V

    .line 39
    :cond_3
    invoke-virtual {p2, v2}, Lcom/dolphin/browser/m/a/e;->a(Z)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/dolphin/browser/m/a/c;->b:I

    return v0
.end method
