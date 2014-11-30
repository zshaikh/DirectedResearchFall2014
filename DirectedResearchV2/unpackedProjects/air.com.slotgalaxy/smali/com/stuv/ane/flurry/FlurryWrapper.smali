.class public Lcom/stuv/ane/flurry/FlurryWrapper;
.super Ljava/lang/Object;
.source "FlurryWrapper.java"


# static fields
.field private static _baseActivity:Landroid/app/Activity;

.field private static _context:Lcom/adobe/fre/FREContext;


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
    .line 17
    sput-object p1, Lcom/stuv/ane/flurry/FlurryWrapper;->_context:Lcom/adobe/fre/FREContext;

    .line 19
    sput-object p0, Lcom/stuv/ane/flurry/FlurryWrapper;->_baseActivity:Landroid/app/Activity;

    .line 21
    return-void
.end method
