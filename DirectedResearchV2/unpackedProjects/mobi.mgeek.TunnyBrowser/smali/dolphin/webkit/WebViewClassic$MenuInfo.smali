.class public Ldolphin/webkit/WebViewClassic$MenuInfo;
.super Ljava/lang/Object;
.source "WebViewClassic.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field public static final MENU_TYPE_CONTEXT:I = 0x3

.field public static final MENU_TYPE_LIST:I = 0x1

.field public static final MENU_TYPE_TOOLBAR:I = 0x2


# instance fields
.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldolphin/webkit/WebViewClassic$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public label:Ljava/lang/String;

.field final synthetic this$0:Ldolphin/webkit/WebViewClassic;

.field public type:I


# direct methods
.method public constructor <init>(Ldolphin/webkit/WebViewClassic;)V
    .locals 0

    .prologue
    .line 1565
    iput-object p1, p0, Ldolphin/webkit/WebViewClassic$MenuInfo;->this$0:Ldolphin/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
