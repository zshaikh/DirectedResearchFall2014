.class Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;
.super Ljava/lang/Object;
.source "LogTable.java"

# interfaces
.implements Ljavax/swing/event/ListSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/lf5/viewer/LogTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogTableListSelectionListener"
.end annotation


# instance fields
.field protected _table:Ljavax/swing/JTable;

.field private final this$0:Lorg/apache/log4j/lf5/viewer/LogTable;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/lf5/viewer/LogTable;Ljavax/swing/JTable;)V
    .locals 0
    .param p2, "table"    # Ljavax/swing/JTable;

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    .line 214
    iput-object p2, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->_table:Ljavax/swing/JTable;

    .line 215
    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 10
    .param p1, "e"    # Ljavax/swing/event/ListSelectionEvent;

    .prologue
    const/4 v9, 0x1

    const-string v8, "\t"

    .line 219
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/swing/ListSelectionModel;

    .line 224
    .local v2, "lsm":Ljavax/swing/ListSelectionModel;
    invoke-interface {v2}, Ljavax/swing/ListSelectionModel;->isSelectionEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 227
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 228
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-interface {v2}, Ljavax/swing/ListSelectionModel;->getMinSelectionIndex()I

    move-result v4

    .line 230
    .local v4, "selectedRow":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v6, v6, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    sub-int/2addr v6, v9

    if-ge v1, v6, :cond_7

    .line 231
    const-string v5, ""

    .line 232
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->_table:Ljavax/swing/JTable;

    invoke-virtual {v6}, Ljavax/swing/JTable;->getModel()Ljavax/swing/table/TableModel;

    move-result-object v6

    invoke-interface {v6, v4, v1}, Ljavax/swing/table/TableModel;->getValueAt(II)Ljava/lang/Object;

    move-result-object v3

    .line 233
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 234
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 237
    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object v7, v7, Lorg/apache/log4j/lf5/viewer/LogTable;->_colNames:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    const-string v6, "\t"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v6, v6, Lorg/apache/log4j/lf5/viewer/LogTable;->_colThread:I

    if-eq v1, v6, :cond_3

    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v6, v6, Lorg/apache/log4j/lf5/viewer/LogTable;->_colMessage:I

    if-eq v1, v6, :cond_3

    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v6, v6, Lorg/apache/log4j/lf5/viewer/LogTable;->_colLevel:I

    if-ne v1, v6, :cond_4

    .line 241
    :cond_3
    const-string v6, "\t"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    :cond_4
    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v6, v6, Lorg/apache/log4j/lf5/viewer/LogTable;->_colDate:I

    if-eq v1, v6, :cond_5

    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v6, v6, Lorg/apache/log4j/lf5/viewer/LogTable;->_colNDC:I

    if-ne v1, v6, :cond_6

    .line 245
    :cond_5
    const-string v6, "\t\t"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 256
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/String;
    :cond_7
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object v7, v7, Lorg/apache/log4j/lf5/viewer/LogTable;->_colNames:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    iget-object v8, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v8, v8, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    sub-int/2addr v8, v9

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ":\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->_table:Ljavax/swing/JTable;

    invoke-virtual {v6}, Ljavax/swing/JTable;->getModel()Ljavax/swing/table/TableModel;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget v7, v7, Lorg/apache/log4j/lf5/viewer/LogTable;->_numCols:I

    sub-int/2addr v7, v9

    invoke-interface {v6, v4, v7}, Ljavax/swing/table/TableModel;->getValueAt(II)Ljava/lang/Object;

    move-result-object v3

    .line 258
    .restart local v3    # "obj":Ljava/lang/Object;
    if-eqz v3, :cond_8

    .line 259
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    :cond_8
    iget-object v6, p0, Lorg/apache/log4j/lf5/viewer/LogTable$LogTableListSelectionListener;->this$0:Lorg/apache/log4j/lf5/viewer/LogTable;

    iget-object v6, v6, Lorg/apache/log4j/lf5/viewer/LogTable;->_detailTextArea:Ljavax/swing/JTextArea;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/swing/text/JTextComponent;->setText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
