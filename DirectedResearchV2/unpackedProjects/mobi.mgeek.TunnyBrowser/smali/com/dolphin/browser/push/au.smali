.class final Lcom/dolphin/browser/push/au;
.super Ljava/lang/Object;
.source "PushProcessor.java"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/dolphin/browser/push/as;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/dolphin/browser/push/as;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/dolphin/browser/push/as;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/dolphin/browser/push/au;->a:Ljava/util/Map;

    .line 112
    iput-object p2, p0, Lcom/dolphin/browser/push/au;->b:Lcom/dolphin/browser/push/as;

    .line 113
    return-void
.end method
