.class public Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Condition;
.super Ljava/lang/Object;
.source "ForecastDescriptor.java"


# instance fields
.field public icon:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Condition$Icon;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final synthetic this$0:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Condition;->this$0:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method
