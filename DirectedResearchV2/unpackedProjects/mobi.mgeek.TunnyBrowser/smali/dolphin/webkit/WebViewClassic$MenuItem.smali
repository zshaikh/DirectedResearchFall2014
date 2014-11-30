.class public Ldolphin/webkit/WebViewClassic$MenuItem;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field public static final ITEM_TYPE_CHECKBOX:I = 0x3

.field public static final ITEM_TYPE_COMMAND:I = 0x1

.field public static final ITEM_TYPE_MENU:I = 0x4

.field public static final ITEM_TYPE_RADIOBOX:I = 0x2


# instance fields
.field public label:Ljava/lang/String;

.field public nodeptr:I

.field public submenu:Ldolphin/webkit/WebViewClassic$MenuInfo;

.field final synthetic this$0:Ldolphin/webkit/WebViewClassic;

.field public type:I


# direct methods
.method public constructor <init>(Ldolphin/webkit/WebViewClassic;)V
    .locals 0

    .prologue
    .line 1553
    iput-object p1, p0, Ldolphin/webkit/WebViewClassic$MenuItem;->this$0:Ldolphin/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
