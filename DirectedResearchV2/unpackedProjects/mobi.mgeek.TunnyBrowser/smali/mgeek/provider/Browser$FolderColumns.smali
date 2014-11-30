.class public Lmgeek/provider/Browser$FolderColumns;
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
.field public static final CREATED:Ljava/lang/String; = "created"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final DATE:Ljava/lang/String; = "date"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final PARENT:Ljava/lang/String; = "parent"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final TITLE:Ljava/lang/String; = "title"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
