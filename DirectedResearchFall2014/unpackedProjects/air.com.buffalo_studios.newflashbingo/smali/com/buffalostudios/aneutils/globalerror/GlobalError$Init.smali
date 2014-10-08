.class public Lcom/buffalostudios/aneutils/globalerror/GlobalError$Init;
.super Ljava/lang/Object;
.source "GlobalError.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buffalostudios/aneutils/globalerror/GlobalError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Init"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 88
    new-instance v0, Lcom/buffalostudios/aneutils/globalerror/GlobalError$Init$1;

    invoke-direct {v0, p0}, Lcom/buffalostudios/aneutils/globalerror/GlobalError$Init$1;-><init>(Lcom/buffalostudios/aneutils/globalerror/GlobalError$Init;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method
