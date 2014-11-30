.class public abstract Lcom/dolphin/browser/sync/ao;
.super Ljava/lang/Object;
.source "SyncStoreManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/sync/ao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/sync/ao;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/dolphin/browser/sync/ao;->a:Lcom/dolphin/browser/sync/ao;

    return-object v0
.end method

.method public static a(Lcom/dolphin/browser/sync/ao;)V
    .locals 0

    .prologue
    .line 12
    sput-object p0, Lcom/dolphin/browser/sync/ao;->a:Lcom/dolphin/browser/sync/ao;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract b()Lcom/dolphin/browser/sync/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dolphin/browser/sync/ag",
            "<",
            "Lcom/dolphin/browser/sync/q;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()Lcom/dolphin/browser/sync/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dolphin/browser/sync/ag",
            "<",
            "Lcom/dolphin/browser/sync/ar;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Lcom/dolphin/browser/sync/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dolphin/browser/sync/ag",
            "<",
            "Lcom/dolphin/browser/sync/aa;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e()Lcom/dolphin/browser/sync/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dolphin/browser/sync/ag",
            "<",
            "Lcom/dolphin/browser/sync/w;",
            ">;"
        }
    .end annotation
.end method

.method public abstract f()Landroid/database/sqlite/SQLiteDatabase;
.end method
