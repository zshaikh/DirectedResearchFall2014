.class Lcom/bitrhymes/nativeutils/functions/ShowAlertView$1;
.super Ljava/lang/Object;
.source "ShowAlertView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitrhymes/nativeutils/functions/ShowAlertView;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitrhymes/nativeutils/functions/ShowAlertView;


# direct methods
.method constructor <init>(Lcom/bitrhymes/nativeutils/functions/ShowAlertView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bitrhymes/nativeutils/functions/ShowAlertView$1;->this$0:Lcom/bitrhymes/nativeutils/functions/ShowAlertView;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 34
    return-void
.end method
