.class Lcom/buffalostudios/aneutils/globalerror/GlobalError$Init$1;
.super Ljava/lang/Object;
.source "GlobalError.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buffalostudios/aneutils/globalerror/GlobalError$Init;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/buffalostudios/aneutils/globalerror/GlobalError$Init;


# direct methods
.method constructor <init>(Lcom/buffalostudios/aneutils/globalerror/GlobalError$Init;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/buffalostudios/aneutils/globalerror/GlobalError$Init$1;->this$1:Lcom/buffalostudios/aneutils/globalerror/GlobalError$Init;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    # invokes: Lcom/buffalostudios/aneutils/globalerror/GlobalError;->showErrorDialog(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    invoke-static {p1, p2}, Lcom/buffalostudios/aneutils/globalerror/GlobalError;->access$0(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method
