﻿<?xml version="1.0" encoding="utf-8" ?>
<configuration>
  <configSections>
    <section name="log4net" type="log4net.Config.Log4NetConfigurationSectionHandler, log4net"/>
  </configSections>
  <log4net>
    <root>
      <level value="All" />
    </root>
    <logger name="Logger">
      <level value="ALL" />
      <appender-ref ref="DebugAppender" />
      <appender-ref ref="InfoAppender" />
      <appender-ref ref="ErrorAppender" />
    </logger>
    <appender name="DebugAppender" type="log4net.Appender.RollingFileAppender">
      <param name="File" value="{{LogDir}}Log\Debug\" />
      <param name="AppendToFile" value="true" />
      <param name="RollingStyle" value="Date" />
      <param name="DatePattern" value="yyyy-MM-dd&quot;.txt&quot;" />
      <param name="StaticLogFileName" value="false" />
      <param name="ImmediateFlush" value="true" />
      <layout type="log4net.Layout.PatternLayout,log4net">
        <param name="ConversionPattern" value="[%d{HH:mm:ss.ffff}] %m%n" />
      </layout>
      <filter type="log4net.Filter.LevelRangeFilter">
        <param name="LevelMin" value="DEBUG" />
        <param name="LevelMax" value="DEBUG" />
      </filter>
    </appender>
    <appender name="InfoAppender" type="log4net.Appender.RollingFileAppender">
      <param name="File" value="{{LogDir}}Log\Info\" />
      <param name="AppendToFile" value="true" />
      <param name="RollingStyle" value="Date" />
      <param name="DatePattern" value="yyyy-MM-dd&quot;.txt&quot;" />
      <param name="StaticLogFileName" value="false" />
      <param name="ImmediateFlush" value="true" />
      <layout type="log4net.Layout.PatternLayout,log4net">
        <param name="ConversionPattern" value="[%d{HH:mm:ss.ffff}] %m%n" />
      </layout>
      <filter type="log4net.Filter.LevelRangeFilter">
        <param name="LevelMin" value="INFO" />
        <param name="LevelMax" value="INFO" />
      </filter>
    </appender>
    <appender name="ErrorAppender" type="log4net.Appender.RollingFileAppender">
      <param name="File" value="{{LogDir}}Log\Error\" />
      <param name="AppendToFile" value="true" />
      <param name="RollingStyle" value="Date" />
      <param name="DatePattern" value="yyyy-MM-dd&quot;.txt&quot;" />
      <param name="StaticLogFileName" value="false" />
      <param name="ImmediateFlush" value="true" />
      <layout type="log4net.Layout.PatternLayout,log4net">
        <param name="ConversionPattern" value="[%d{HH:mm:ss.ffff}] %m%n" />
      </layout>
      <filter type="log4net.Filter.LevelRangeFilter">
        <param name="LevelMin" value="ERROR" />
        <param name="LevelMax" value="ERROR" />
      </filter>
    </appender>
  </log4net>
</configuration>