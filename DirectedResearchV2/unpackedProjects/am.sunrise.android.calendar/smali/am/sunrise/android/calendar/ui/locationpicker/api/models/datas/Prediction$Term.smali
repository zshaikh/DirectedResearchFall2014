.class public Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction$Term;
.super Ljava/lang/Object;
.source "Prediction.java"


# instance fields
.field public offset:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final synthetic this$0:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;

.field public value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction$Term;->this$0:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
