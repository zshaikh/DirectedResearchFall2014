.class public Lcom/facebook/orca/database/DbThreadsPropertyUtil;
.super Lcom/facebook/orca/database/DbPropertyUtil;
.source "DbThreadsPropertyUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/database/DbPropertyUtil",
        "<",
        "Lcom/facebook/orca/database/DbThreadPropertyKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation runtime Lcom/facebook/orca/annotations/ThreadsDb;
        .end annotation
    .end param

    .prologue
    .line 16
    const-string v0, "properties"

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/database/DbPropertyUtil;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 17
    return-void
.end method
