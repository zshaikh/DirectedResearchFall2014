.class public Lcom/dolphin/browser/menu/a/b;
.super Ljava/lang/Object;
.source "DownloadImage.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/dolphin/browser/menu/a/b;->a:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 18
    const-string v0, "home"

    const-string v1, "longpressmenu"

    const-string v3, "saveimage"

    invoke-static {v0, v1, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/dolphin/browser/t/a;->a()Lcom/dolphin/browser/t/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/menu/a/b;->a:Ljava/lang/String;

    const-wide/16 v5, -0x1

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/t/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 21
    const/4 v0, 0x1

    return v0
.end method
