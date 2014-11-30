.class public abstract Lcom/facebook/ane/AneBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "AneBaseAdapter.java"


# static fields
.field protected static asContext:Lcom/adobe/fre/FREContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    invoke-static {}, Lcom/gamesys/android/social/facebook/ane/FacebookExtension;->getContext()Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    move-result-object v0

    sput-object v0, Lcom/facebook/ane/AneBaseAdapter;->asContext:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method
