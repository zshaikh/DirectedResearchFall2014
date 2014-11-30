.class public Lcom/pocketchange/android/ProductTransactionManagerImpl$TransactionTable$Columns;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/ProductTransactionManagerImpl$TransactionTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final QUANTITY:Ljava/lang/String; = "quantity"

.field public static final REMOTE_ID:Ljava/lang/String; = "remote_id"

.field public static final SKU:Ljava/lang/String; = "sku"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
