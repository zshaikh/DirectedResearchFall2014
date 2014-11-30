.class public Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Condition$Icon;
.super Ljava/lang/Object;
.source "ForecastDescriptor.java"


# instance fields
.field public retina:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Condition$Icon$IconDescriptor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public standard:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Condition$Icon$IconDescriptor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final synthetic this$1:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Condition;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Condition;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Condition$Icon;->this$1:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method
