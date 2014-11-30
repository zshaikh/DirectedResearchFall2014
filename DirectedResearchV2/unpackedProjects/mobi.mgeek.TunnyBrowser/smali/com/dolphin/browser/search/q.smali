.class public abstract Lcom/dolphin/browser/search/q;
.super Ljava/lang/Object;
.source "SuggestionAdapterBase.java"


# instance fields
.field c:Landroid/database/Cursor;

.field final synthetic d:Lcom/dolphin/browser/search/k;


# direct methods
.method protected constructor <init>(Lcom/dolphin/browser/search/k;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/dolphin/browser/search/q;->d:Lcom/dolphin/browser/search/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/dolphin/browser/search/w;
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public b()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/search/q;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/search/q;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/search/q;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/search/q;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/search/q;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method
