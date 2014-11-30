.class public Lcom/dolphin/browser/sync/ap;
.super Lcom/dolphin/browser/sync/ao;
.source "SyncStoreManagerImpl.java"


# instance fields
.field private a:Lcom/dolphin/browser/sync/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/sync/ag",
            "<",
            "Lcom/dolphin/browser/sync/q;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/dolphin/browser/sync/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/sync/ag",
            "<",
            "Lcom/dolphin/browser/sync/w;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/dolphin/browser/sync/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/sync/ag",
            "<",
            "Lcom/dolphin/browser/sync/aa;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/dolphin/browser/sync/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/sync/ag",
            "<",
            "Lcom/dolphin/browser/sync/ar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/dolphin/browser/sync/ao;-><init>()V

    .line 12
    new-instance v0, Lcom/dolphin/browser/sync/r;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/r;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/sync/ap;->a:Lcom/dolphin/browser/sync/ag;

    .line 13
    new-instance v0, Lcom/dolphin/browser/sync/x;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/x;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/sync/ap;->b:Lcom/dolphin/browser/sync/ag;

    .line 14
    new-instance v0, Lcom/dolphin/browser/sync/z;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/z;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/sync/ap;->c:Lcom/dolphin/browser/sync/ag;

    .line 15
    new-instance v0, Lcom/dolphin/browser/sync/as;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/as;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/sync/ap;->d:Lcom/dolphin/browser/sync/ag;

    return-void
.end method


# virtual methods
.method public b()Lcom/dolphin/browser/sync/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dolphin/browser/sync/ag",
            "<",
            "Lcom/dolphin/browser/sync/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dolphin/browser/sync/ap;->a:Lcom/dolphin/browser/sync/ag;

    return-object v0
.end method

.method public c()Lcom/dolphin/browser/sync/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dolphin/browser/sync/ag",
            "<",
            "Lcom/dolphin/browser/sync/ar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/sync/ap;->d:Lcom/dolphin/browser/sync/ag;

    return-object v0
.end method

.method public d()Lcom/dolphin/browser/sync/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dolphin/browser/sync/ag",
            "<",
            "Lcom/dolphin/browser/sync/aa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/sync/ap;->c:Lcom/dolphin/browser/sync/ag;

    return-object v0
.end method

.method public e()Lcom/dolphin/browser/sync/ag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dolphin/browser/sync/ag",
            "<",
            "Lcom/dolphin/browser/sync/w;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dolphin/browser/sync/ap;->b:Lcom/dolphin/browser/sync/ag;

    return-object v0
.end method

.method public f()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
