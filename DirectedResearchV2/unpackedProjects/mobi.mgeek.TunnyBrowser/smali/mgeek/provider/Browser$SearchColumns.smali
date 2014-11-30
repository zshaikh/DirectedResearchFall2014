.class public Lmgeek/provider/Browser$SearchColumns;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DATE:Ljava/lang/String; = "date"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final SEARCH:Ljava/lang/String; = "search"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final URL:Ljava/lang/String; = "url"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
