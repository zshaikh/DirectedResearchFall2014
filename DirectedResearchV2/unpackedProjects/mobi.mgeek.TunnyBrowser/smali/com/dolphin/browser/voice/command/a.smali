.class public Lcom/dolphin/browser/voice/command/a;
.super Ljava/lang/Object;
.source "BuildInUrls.java"


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    sget-object v0, Lcom/dolphin/browser/voice/command/p;->a:Landroid/net/Uri;

    const-string v1, "build_in"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/voice/command/a;->a:Landroid/net/Uri;

    return-void
.end method
