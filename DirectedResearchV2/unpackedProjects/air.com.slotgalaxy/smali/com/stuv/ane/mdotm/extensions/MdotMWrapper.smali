.class public Lcom/stuv/ane/mdotm/extensions/MdotMWrapper;
.super Ljava/lang/Object;
.source "MdotMWrapper.java"


# static fields
.field private static _baseActivity:Landroid/app/Activity;

.field private static _context:Lcom/adobe/fre/FREContext;

.field private static _redeemData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Activity;Lcom/adobe/fre/FREContext;)V
    .locals 0
    .param p0, "baseActivity"    # Landroid/app/Activity;
    .param p1, "context"    # Lcom/adobe/fre/FREContext;

    .prologue
    .line 21
    sput-object p1, Lcom/stuv/ane/mdotm/extensions/MdotMWrapper;->_context:Lcom/adobe/fre/FREContext;

    .line 23
    sput-object p0, Lcom/stuv/ane/mdotm/extensions/MdotMWrapper;->_baseActivity:Landroid/app/Activity;

    .line 25
    return-void
.end method

.method public static initialise()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
