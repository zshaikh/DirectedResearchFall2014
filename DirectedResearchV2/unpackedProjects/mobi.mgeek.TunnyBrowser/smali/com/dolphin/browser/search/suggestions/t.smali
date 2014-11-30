.class public Lcom/dolphin/browser/search/suggestions/t;
.super Ljava/lang/Object;
.source "SearchTabContainerSearchRecord.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/dolphin/browser/search/suggestions/t;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Lcom/dolphin/browser/search/suggestions/t;

    invoke-direct {v0}, Lcom/dolphin/browser/search/suggestions/t;-><init>()V

    .line 207
    const-string v1, "search"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/search/suggestions/t;->a:Ljava/lang/String;

    .line 208
    const-string v1, "_category"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/search/suggestions/t;->c:I

    .line 209
    const-string v1, "_title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/search/suggestions/t;->d:Ljava/lang/String;

    .line 210
    const-string v1, "_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/search/suggestions/t;->e:Ljava/lang/String;

    .line 211
    const-string v1, "search_engine_name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/search/suggestions/t;->b:Ljava/lang/String;

    .line 213
    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/search/suggestions/t;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/search/suggestions/t;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/t;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/search/suggestions/t;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/t;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/search/suggestions/t;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/t;->b:Ljava/lang/String;

    return-object v0
.end method
