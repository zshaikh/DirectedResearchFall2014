.class public Lcom/stuv/ane/pushnotif/Extension;
.super Ljava/lang/Object;
.source "Extension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static context:Lcom/adobe/fre/FREContext;

.field public static isInForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stuv/ane/pushnotif/Extension;->isInForeground:Z

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1
    .param p1, "contextType"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v0, Lcom/stuv/ane/pushnotif/ExtensionContext;

    invoke-direct {v0}, Lcom/stuv/ane/pushnotif/ExtensionContext;-><init>()V

    sput-object v0, Lcom/stuv/ane/pushnotif/Extension;->context:Lcom/adobe/fre/FREContext;

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/stuv/ane/pushnotif/Extension;->context:Lcom/adobe/fre/FREContext;

    .line 20
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method
