.class public Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Condition$Icon$IconDescriptor;
.super Ljava/lang/Object;
.source "ForecastDescriptor.java"


# instance fields
.field public height:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final synthetic this$2:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Condition$Icon;

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public width:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Condition$Icon;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Condition$Icon$IconDescriptor;->this$2:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Condition$Icon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
