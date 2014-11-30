.class public abstract Lcom/dolphin/browser/u/a;
.super Landroid/widget/CursorAdapter;
.source "BaseCursorAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/dolphin/browser/u/c;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 29
    iput-object p1, p0, Lcom/dolphin/browser/u/a;->a:Landroid/content/Context;

    .line 30
    invoke-virtual {p0}, Lcom/dolphin/browser/u/a;->d()V

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/u/a;)Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/dolphin/browser/u/a;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/u/a;Z)Z
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/dolphin/browser/u/a;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/u/a;Z)Z
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/dolphin/browser/u/a;->d:Z

    return p1
.end method


# virtual methods
.method protected abstract a()Landroid/database/Cursor;
.end method

.method public a(I)Lcom/dolphin/browser/bookmark/a/a;
    .locals 7

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/dolphin/browser/u/a;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 49
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 51
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 52
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 53
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 54
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 56
    new-instance v0, Lcom/dolphin/browser/bookmark/a/a;

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/bookmark/a/a;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/u/c;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/dolphin/browser/u/a;->b:Lcom/dolphin/browser/u/c;

    .line 109
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 38
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/u/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final d()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 64
    iget-boolean v0, p0, Lcom/dolphin/browser/u/a;->c:Z

    if-eqz v0, :cond_0

    .line 65
    iput-boolean v1, p0, Lcom/dolphin/browser/u/a;->d:Z

    .line 96
    :goto_0
    return-void

    .line 69
    :cond_0
    iput-boolean v1, p0, Lcom/dolphin/browser/u/a;->c:Z

    .line 71
    new-instance v0, Lcom/dolphin/browser/u/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/u/b;-><init>(Lcom/dolphin/browser/u/a;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method public e()Lcom/dolphin/browser/u/c;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/u/a;->b:Lcom/dolphin/browser/u/c;

    return-object v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/u/a;->a(I)Lcom/dolphin/browser/bookmark/a/a;

    move-result-object v0

    return-object v0
.end method
